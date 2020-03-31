import os
import json
from markdownify import markdownify as md
import yaml
from shutil import copy2

raw = os.path.join(os.getcwd(), "raw/instagram/clement.renaud_20200331")
mediajson= os.path.join(raw, "media.json")

dest_md = os.path.join(os.getcwd(), "_posts/instagram")
dest_photos = os.path.join(os.getcwd(), "uploads/instagram")

# create dest dirs
os.makedirs(dest_md, exist_ok=True)
os.makedirs(dest_photos, exist_ok=True)

with open(mediajson, 'r') as f:
    data = json.load(f)
    meta = {}
    for post in data["photos"]:
        # skip pics without captions
        if post["caption"]:

            meta["date"] = post["taken_at"][0:10]
            meta["language"]=  "en"
            # meta["original_url"] =
            meta["title"] = post["caption"][0:60] + "..."
            meta["source"] = "instagram"
            # print(post["caption"])
            # print(post["taken_at"])

            src = os.path.join(raw, post["path"])
            dst = "%s/%s"%(dest_photos, post["path"][7:])

            dir = os.path.dirname(post["path"][7:])
            # make the dirs
            os.makedirs(os.path.join(dest_photos, dir), exist_ok=True)
            print(dir)

            # copy images file
            copy2(src, dst)

            # parse post
            meta_md = yaml.dump(meta)
            text = md(post["caption"])
            # print(meta_md, text)
            to_write = '''---
%s
---

![](/uploads/instagram/%s)

%s
            '''%(meta_md, post["path"][7:], text)

            # print(to_write)

            filename = post["taken_at"][0:10] + "-ig-" + post["taken_at"] +".md"
            print(filename)

            with open(os.path.join(dest_md,filename), "w") as f :
                f.write(to_write)
