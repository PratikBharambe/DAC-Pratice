package com.demo.dao;

import java.time.LocalDate;

import com.demo.beans.Friend;

public class FriendDaoImpl implements FriendDao {
	private static Friend[] fArray;
	private static int count;

	static {
		fArray = new Friend[10];
		fArray[0] = new Friend(1, "pratik", "bharambe", 12355, LocalDate.of(2002, 02, 12), "pratik@gmail.com", "pune",
				new String[] { "music", "trek" });
		fArray[1] = new Friend(2, "divya", "chaudhari", 4423, LocalDate.of(2002, 12, 30), "divya@gmail.com", "pune",
				new String[] { "playing", "sleeping" });
		fArray[2] = new Friend(3, "Shweta", "Baviskar", 4423, LocalDate.of(1999, 1, 20), "shweta@gmail.com", "pune",
				new String[] { "sleeping", "eating" });
		fArray[3] = new Friend(4, "Sarala", "Wagh", 2345, LocalDate.of(1982, 2, 24), "sarala@gmail.com", "Pune",
				new String[] { "speaking", "music" });
		count = 4;
	}

	@Override
	public Friend[] getAllFriends() {
		return fArray;
	}

	@Override
	public Friend getById(int id) {
		for (Friend f : fArray) {
			if (f != null) {
				if (f.getId() == id)
					return f;
			} else {
				break;
			}
		}
		return null;
	}

	@Override
	public Friend[] getByName(String nm) {
		Friend[] fArr = new Friend[fArray.length];
		int cnt=0;
		for (Friend f : fArray) {
			if(f != null) {
				if(f.getFirstName().equals(nm)) {
					fArr[cnt] = f;
					cnt++;
				}
			}else {
				break;
			}
		}
		return fArr;
	}

	@Override
	public Friend[] getByHobby(String hobby) {
		Friend[] fhob = new Friend[fArray.length];
		int c = 0;
		for (Friend f : fArray) {
			if(f != null) {
				String[] hobies = f.getHobbies();
				for(int i = 0 ; i < hobies.length ; i++) {
					if(hobies[i].equals(hobby)) {
						fhob[c] = f;
						c++;
					}
				}
			}else {
				break;
			}
		}
		return fhob;
	}
}
