# Unlock Music 音乐解锁



## 特性

### 支持的格式

- [x] QQ 音乐 (.qmc0/.qmc2/.qmc3/.qmcflac/.qmcogg/.tkm)
- [x] Moo 音乐格式 (.bkcmp3/.bkcflac/...)
- [x] QQ 音乐 Tm 格式 (.tm0/.tm2/.tm3/.tm6)
- [x] QQ 音乐新格式 (.mflac/.mgg/.mflac0/.mgg1/.mggl)
- [x] <ruby>QQ 音乐海外版<rt>JOOX Music</rt></ruby> (.ofl_en)
- [x] 网易云音乐格式 (.ncm)
- [x] 虾米音乐格式 (.xm)
- [x] 酷我音乐格式 (.kwm)
- [x] 酷狗音乐格式 (.kgm/.vpr)
- [x] Android 版喜马拉雅文件格式 (.x2m/.x3m)
- [x] 咪咕音乐格式 (.mg3d)

### 其他特性

- [x] 在浏览器中解锁
- [x] 拖放文件
- [x] 批量解锁
- [x] 渐进式 Web 应用 (PWA)
- [x] 多线程
- [x] 写入和编辑元信息与专辑封面



### 自行构建

- 环境要求
  - nodejs (v22.x)
  - npm

1. 获取项目源代码后安装相关依赖：

   ```sh
   npm install
   npm ci
   ```

2. 然后进行构建：

   ```sh
   npm run build
   ```

   - 构建后的产物可以在 `dist` 目录找到。
   - 如果是用于开发，可以执行 `npm run serve`。

3. 如需构建浏览器扩展，构建成功后还需要执行：

   ```sh
   npm run make-extension
   ```
