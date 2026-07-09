# Buddy Kawaii Responsive App

这是适配手机和电脑的粉色可爱风双人自律同步网页。

## 部署

- Vercel：上传整个文件夹或连接 GitHub 仓库即可。
- GitHub Pages：上传到仓库根目录，Settings → Pages → Deploy from branch。

## Supabase

在 Supabase SQL Editor 运行 `supabase_schema.sql`，然后在网页同步设置中填写 Project URL、anon public key 和相同房间码。

## 本地预览

```bash
python3 -m http.server 3000
```

打开 `http://localhost:3000`。
