import java.util.*;

class Node {

	int data;
	
	Node left;
	
	Node right;

}

public class Tree {

	public static void main(String[] args) {
		
	}
	
	public Node makeNew(Node a, int data, Node b){
		Node root = new Node();
		root.data = data;
		root.left = a;
		root.right = b;
		return root;
	}
	
	//전위 순회 
	public void preorder(Node root) {
		
		if(root != null){
			
			System.out.println(root.data);
			
			preorder(root.left);
			
			preorder(root.right);
		
		}
		
	}
	
	public void inorder(Node root){
		
		if(root != null){			
			preorder(root.left);

			System.out.println(root.data);

			preorder(root.right);
		}
		
	}
	
	public void postorder(Node root){
		
		if(root != null){			
			preorder(root.left);

			preorder(root.right);

			System.out.println(root.data);

		}
		
	}

}
