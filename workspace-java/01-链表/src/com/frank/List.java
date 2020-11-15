package com.frank;

public interface List<E> {
	static final int ELEMENT_NOT_FOUND = -1;

	int size();
	boolean isEmpty();
	boolean contains(E e);
	void add(E e);
	void add(int index, E e);
	E get(int index);
	E set(int index, E e);
	E remove(int index);
	int indexOf(E e);
	void clear();
}
