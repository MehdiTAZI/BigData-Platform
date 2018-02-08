package com.mehdi;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

public class Main {

    public static void main(String[] args) {
	// write your code here
	    final int nbEntries = 10000;
        try {
            new Main().generateData(nbEntries,0,100,"train.csv","test.csv");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void generateData(final int nbEntries, final int min, final int max, final String trainFileName,final String testFileName) throws IOException {

        final Random rand = new Random();
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(trainFileName));
        bufferedWriter.write(String.format("v1,v2,cible"));
        bufferedWriter.newLine();
        for (int i = 0;i<nbEntries;i++){
            final int v1 = rand.nextInt((max - min) + 1) + min;
            final int v2 = rand.nextInt((max - min) + 1) + min;
            final int cible = (v1+v2)+Math.min(v1,v2);
            bufferedWriter.write(String.format("%d,%d,%d",v1,v2,cible));
            bufferedWriter.newLine();
        }
        bufferedWriter.close();

        bufferedWriter = new BufferedWriter(new FileWriter(testFileName));
        bufferedWriter.write(String.format("v1,v2"));
        bufferedWriter.newLine();
        final int nbTestEntries = nbEntries/10;
        for (int i = 0;i<nbTestEntries;i++){
            final int v1 = rand.nextInt((max - min) + 1) + min;
            final int v2 = rand.nextInt((max - min) + 1) + min;
            bufferedWriter.write(String.format("%d,%d",v1,v2));
            bufferedWriter.newLine();
        }
        bufferedWriter.close();
    }
}
