train_sample = {
    "images": [
        {
            "id": 2019000000000,
            "file_name": "part_2/train_part_e/e8/e8fe15d38a65c26b.jpg",
            "width": 1024,
            "height": 719,
        }
    ],
    "type": "instances",
    "annotations": [
        {
            "ignore": 0,  # always 0
            "image_id": 2019000000000,
            "segmentation": 0,  # always 0
            "bbox": [393.0, 347.0, 48.0, 42.0],  # [x,y,width,height]
            "area": 0.0,  # always 0.0
            "category_id": 1,
            "iscrowd": 0,  # always 0
            "id": 0,
        }
    ],
    "categories": [
        {"supercategory": "cosmetics", "id": 1, "name": "lipstick"}
    ],  # totally 800 ids
}

test_sample = {
    "images": [
        {
            "id": 2019000000000,
            "file_name": "part_2/train_part_3/32/3205c7af42ca8c96.jpg",
            "width": 500,
            "height": 499,
        }
    ],
    "type": "instances",
    "annotations": [
        {
            "ignore": 0,  # always 0
            "image_id": 2019000000000,
            "segmentation": 0,  # always 0
            "bbox": [120.0, 80.0, 43.0, 127.0],
            "area": 0.0,  # always 0.0
            "category_id": 1,
            "iscrowd": 0,  # always 0
            "id": 0,
        }
    ],
    "categories": [
        {"supercategory": "drink", "id": 1, "name": "beer"}
    ],  # totally 200 ids
}
