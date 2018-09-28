
import java.util.*;
public class StringList {
	int size=10; //배열 사이즈설정
	String []str=new String[size];
	int index; //인덱스번호 

	public void add (int index, String word){ //인덱스와 문자열을 매개변수로 받아 해당 위치에 삽입
		if(str.length>index&&index>=0){
			for(int i=0;i<size;i++){
				if(i==index&&str[i]==null){
					str[i]=word;
					size++;
				}
				else if(i==index&&str[i]!=null){
					str[i+1]=str[i];
					str[i]=word;
					size++;
				}
			}
		}
		else if(index<0 && index>str.length){
			System.out.println("index 범위 초과");
		}
	}
	public void remove (String word){ //문자열을 매개변수로 받아 원소를 삭제한다 (중복시 앞에것만 삭제)
		for(int i=0; i<str.length ; i++){
			if (i==str.length-1&& str[i]==null){
				System.out.println("같은 단어가 없습니다.");
				break;
			}
			else if(str[i]==null) //null일땐 계속 실행
				continue;
			else if(str[i].equals(word)){ //똑같은 단어있을때 반복문 실행
				for(int j=i;j<str.length;j++){
					if(str[i+1]!=null && str[i]!=str[i+1]) //뒤가 비어있지 않고 앞뒤가 같지않을경우
						str[j]=str[j+1]; //뒤에서 한개씩 당긴다

					else if(str[i+1]==null||str[i]==str[i+1])//뒤에가 비어있거나 앞뒤가 같을경우
						str[i]=null;
					break;
				}
				size--;
			}

		}

	}
	public String get(int num){ //인덱스를 매개변수로 받아 해당 위치의 원소를 리턴한다.
		return str[num];
	}
	public int getSize(){ //리스트 길이를 리턴 
		return str.length;
	}
	public String toString(){ //리스트 내용을 문자열로 만들어 리턴한다.
		String st="";
		for(int i=0; i<str.length ; i++)
			if(str[i]!=null){
				st=st+str[i]+" ";
			}
		return st;
	}
}