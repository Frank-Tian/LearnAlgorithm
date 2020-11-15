package com.frank;

public class LinkedList<E> extends AbstractList<E> {

	private Node<E> first;
	private Node<E> last;
	
	private static class Node<E> {
		E e;
		Node<E> prev;
		Node<E> next;
		public Node(Node<E> prev, E e, Node<E> next) {
			this.prev = prev;
			this.e = e;
			this.next = next;
		}
	}
	
	@Override
	public void add(int index, E e) {
		if (index == size) {
			// 尾部追加
			Node<E> oldLast = last;
			last = new Node<>(oldLast, e, null);
			if (oldLast == null) { // 第一个元素
				first = last;
			} else {
				oldLast.next = last;
			}
		} else {
			Node<E> next = node(index);	// 找到 index 位置 node
			Node<E> prev = next.prev;	// 找到 index 位置 node 的前一个节点
			Node<E> node = new Node<>(prev, e, next); // 创建新节点
			next.prev = node;
			
			if (prev == null) {	// index == 0
				first = node;
			} else {
				prev.next = node;
			}
		}
		
		size++;
	}

	@Override
	public E get(int index) {
		return node(index).e;
	}

	@Override
	public E set(int index, E e) {
		Node<E> node = node(index);
		E old = node.e;
		node.e = e;
		return old;
	}

	@Override
	public E remove(int index) {
		rangeCheck(index);
		
		Node<E> node = node(index);
		Node<E> prev = node.prev;
		Node<E> next = node.next;
		
		if (prev == null) { // index == 0
			first = next;
		} else {
			prev.next = next;
		}
		
		if (next == null) { // index == size - 1
			last = prev;
		} else {
			next.prev = prev;
		}
		size--;
		
		return node.e;
	}

	@Override
	public int indexOf(E e) {
		if (e == null) {
			Node<E> node = first;
			for (int i = 0; i < size; i++) {
				if (node.e == null) return i;
				
				node = node.next;
			}
		} else {
			Node<E> node = first;
			for (int i = 0; i < size; i++) {
				if (e.equals(node.e)) return i;
				
				node = node.next;
			}
		}
		return ELEMENT_NOT_FOUND;
	}

	@Override
	public void clear() {
		size = 0;
		first = null;
		last = null;
	}

	private Node<E> node(int index) {
		rangeCheck(index);
		
		if (index < (size >> 1)) {
			Node<E> node = first;
			for (int i = 0; i < index; i++) {
				node = node.next;
			}
			return node;
		} else {
			Node<E> node = last;
			for (int i = size - 1; i > index; i--) {
				node = node.prev;
			}
			return node;
		}
	}
}
