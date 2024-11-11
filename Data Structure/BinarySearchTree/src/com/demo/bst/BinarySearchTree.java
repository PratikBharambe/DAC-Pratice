package com.demo.bst;

public class BinarySearchTree {

	class Node {
		int data;
		Node left;
		Node right;

		public Node(int data) {
			this.data = data;
			this.left = null;
			this.right = null;
		}
	}

	Node root;

	public BinarySearchTree() {
		this.root = null;
	}

	public void insert(int data) {
		root = insertNode(root, data);
	}

	private Node insertNode(Node root, int data) {
		if (root == null) {
			Node newnode = new Node(data);
			return newnode;
		} else {
			if (data < root.data) {
				root.left = insertNode(root.left, data);
			} else {
				root.right = insertNode(root.right, data);
			}
			return root;
		}
	}

	public void inOrder() {
		inOrderTraversal(root);
	}

	private void inOrderTraversal(Node root) {
		if (root == null)
			return;
		else {
			inOrderTraversal(root.left);
			System.out.print(root.data + "  ");
			inOrderTraversal(root.right);
		}
	}

	public void preOrder() {
		preOrderTraversal(root);
	}

	private void preOrderTraversal(Node root) {
		if (root == null)
			return;
		else {
			System.out.print(root.data + "  ");
			preOrderTraversal(root.left);
			preOrderTraversal(root.right);
		}
	}

	public void postOrder() {
		postOrderTraversal(root);
	}

	private void postOrderTraversal(Node root) {
		if (root == null)
			return;
		else {
			postOrderTraversal(root.left);
			postOrderTraversal(root.right);
			System.out.print(root.data + "  ");
		}
	}

	public boolean search(int data) {
		return searchData(root, data);
	}

	private boolean searchData(Node root, int data) {
		if (root == null) {
			return false;
		} else {
			if (root.data == data) {
				return true;
			} else if (data < root.data) {
				return searchData(root.left, data);
			} else {
				return searchData(root.right, data);
			}
		}
	}

}
