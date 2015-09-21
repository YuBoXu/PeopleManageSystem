package com.neu.util.hy;

public class Crypt {
	// md5()��ϢժҪ, ������
		public static byte[] md5(byte[] input) throws Exception {
			java.security.MessageDigest alg = java.security.MessageDigest
					.getInstance("MD5"); 
			alg.update(input);
			byte[] digest = alg.digest();
			return digest;
		}
		// �ֽ���ת����16�����ַ���
		public static String byte2hex(byte[] b) {
			String hs = "";
			String stmp = "";
			for (int n = 0; n < b.length; n++) {
				stmp = (java.lang.Integer.toHexString(b[n] & 0XFF));
				if (stmp.length() == 1)
					hs = hs + "0" + stmp;
				else
					hs = hs + stmp;
				if (n < b.length - 1)
					hs = hs + "";
			}
			return hs.toLowerCase();
		}
	//123456
//		654321
		// ��ȡ���ܺ������
		public static String md5Hex(String data) {
			String str = "";
			try {
				str = byte2hex(md5(data.getBytes()));
			} catch (Exception e) {
				e.printStackTrace();
			}
			return str;
		}

		public static void main(String[] args) {
			String str = md5Hex("abcd124");
			System.out.println(str);
			System.out.println("===============");
		}

}
