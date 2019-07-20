package com.github.sirlacky.DiabloIIHolyGrail.domain.model;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

public class Item {

    private String name;
    private String requiredLVL;
    private String jpg;
    private String description;
    private String type;
    private String type2;
    private String stats;
    private String difficulty;

    @Override
    public String toString() {
        return "Item{" +
                "name='" + name + '\'' +
                ", requiredLVL='" + requiredLVL + '\'' +
                ", jpg='" + jpg + '\'' +
                ", description='" + description + '\'' +
                ", type='" + type + '\'' +
                ", type2='" + type2 + '\'' +
                ", stats='" + stats + '\'' +
                ", difficulty='" + difficulty + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRequiredLVL() {
        return requiredLVL;
    }

    public void setRequiredLVL(String requiredLVL) {
        this.requiredLVL = requiredLVL;
    }

    public String getJpg() {
        return jpg;
    }

    public void setJpg(String jpg) {
        this.jpg = jpg;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType2() {
        return type2;
    }

    public void setType2(String type2) {
        this.type2 = type2;
    }

    public String getStats() {
        return stats;
    }

    public void setStats(String stats) {
        this.stats = stats;
    }

    public String getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(String difficulty) {
        this.difficulty = difficulty;
    }

    public static List<Item> getItems(String itemName) {
        List<Item>itemList = new ArrayList<>();
        Logger logger = Logger.getLogger(Item.class.getName());

        try {
            String filename = "src\\main\\webapp\\media\\json\\items.json";
            String workingDirectory = System.getProperty("user.dir");
            String absoluteFilePath = "";
            absoluteFilePath = workingDirectory + File.separator + filename;
            logger.info("Downloaded JSON file from: "+absoluteFilePath);

            byte[] jsonData = Files.readAllBytes(Paths.get(absoluteFilePath));
            ObjectMapper objectMapper = new ObjectMapper();
            JsonNode rootNode = null;
            rootNode = objectMapper.readTree(jsonData);
            JsonNode items = rootNode.path(itemName);
            Iterator<JsonNode> elements = items.elements();

            while(elements.hasNext()){
                JsonNode nextElement = elements.next();
                Item item = new Item();

                if(nextElement.has("name")){
                    JsonNode name = nextElement.path("name");
                    item.setName(name.asText());
                }
                if(nextElement.has("requiredLVL")){
                    JsonNode requiredLVL = nextElement.path("requiredLVL");
                    item.setRequiredLVL(requiredLVL.asText());
                }
                if(nextElement.has("description")){
                    JsonNode desc = nextElement.path("description");
                    item.setDescription(desc.asText());
                }
                if(nextElement.has("jpg")){
                    JsonNode jpg = nextElement.path("jpg");
                    item.setJpg(jpg.asText());
                }
                if(nextElement.has("type")){
                    JsonNode type = nextElement.path("type");
                    item.setType(type.asText());
                }
                if(nextElement.has("type2")){
                    JsonNode type2 = nextElement.path("type2");
                    item.setType2(type2.asText());
                }
                if(nextElement.has("stats")){
                    JsonNode stats = nextElement.path("stats");
                    item.setStats(stats.asText());
                }
                if(nextElement.has("difficulty")){
                    JsonNode diff = nextElement.path("difficulty");
                    item.setDifficulty(diff.asText());
                }
                logger.info(item.toString());
                itemList.add(item);
            }


        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}

