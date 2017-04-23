package org.hue.udf;

import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.io.Text;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public final class Sha1 extends UDF {

    public Text evaluate(final Text s) {
        if (s == null) { return null; }
        try {
            return new Text(sha1(s.toString()));
        } catch (NoSuchAlgorithmException e) {
           return new Text("<Error> NoSuchAlgorithmException </Error>");
        }
    }

    private String sha1(String input) throws NoSuchAlgorithmException {
        MessageDigest mDigest = MessageDigest.getInstance("SHA1");
        byte[] result = mDigest.digest(input.getBytes());
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < result.length; i++) {
        sb.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
    }

        return sb.toString();
    }

}


