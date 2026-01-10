package d7;

import java.util.Deque;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j1 extends m1 implements Deque {
    @Override // java.util.Deque
    public void addFirst(Object obj) {
        delegate().addFirst(obj);
    }

    @Override // java.util.Deque
    public void addLast(Object obj) {
        delegate().addLast(obj);
    }

    @Override // d7.m1, d7.i1, d7.l1
    public abstract Deque delegate();

    @Override // java.util.Deque
    public Iterator<Object> descendingIterator() {
        return delegate().descendingIterator();
    }

    @Override // java.util.Deque
    public Object getFirst() {
        return delegate().getFirst();
    }

    @Override // java.util.Deque
    public Object getLast() {
        return delegate().getLast();
    }

    @Override // java.util.Deque
    public boolean offerFirst(Object obj) {
        return delegate().offerFirst(obj);
    }

    @Override // java.util.Deque
    public boolean offerLast(Object obj) {
        return delegate().offerLast(obj);
    }

    @Override // java.util.Deque
    public Object peekFirst() {
        return delegate().peekFirst();
    }

    @Override // java.util.Deque
    public Object peekLast() {
        return delegate().peekLast();
    }

    @Override // java.util.Deque
    public Object pollFirst() {
        return delegate().pollFirst();
    }

    @Override // java.util.Deque
    public Object pollLast() {
        return delegate().pollLast();
    }

    @Override // java.util.Deque
    public Object pop() {
        return delegate().pop();
    }

    @Override // java.util.Deque
    public void push(Object obj) {
        delegate().push(obj);
    }

    @Override // java.util.Deque
    public Object removeFirst() {
        return delegate().removeFirst();
    }

    @Override // java.util.Deque
    public boolean removeFirstOccurrence(Object obj) {
        return delegate().removeFirstOccurrence(obj);
    }

    @Override // java.util.Deque
    public Object removeLast() {
        return delegate().removeLast();
    }

    @Override // java.util.Deque
    public boolean removeLastOccurrence(Object obj) {
        return delegate().removeLastOccurrence(obj);
    }
}
