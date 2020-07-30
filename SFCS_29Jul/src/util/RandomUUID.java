package util;

import java.util.UUID;

public class RandomUUID {

	public static int getRandomID() {
		UUID uuid = UUID.randomUUID();
		int var = uuid.variant();
		return var;
	}
}
