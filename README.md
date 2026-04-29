# 专报文档生成器

一个面向 Windows 的专报 Word 生成工具。它可以读取 JSON 内容文件和 Word 模板，输出符合固定格式要求的 `.docx` 文档；也提供模板设计器，用于读取、修改和生成专报模板。

## 功能

- JSON 转标准 Word 专报
- 读取不同 Word 模板
- 检查引言 250 字、全文 3000 字、表格数据来源、英文缩写等基础规则
- 模板设计器支持调整：页边距、页眉页脚距离、字体、字号、加粗、对齐、首行缩进、段前段后、行距
- 模板配置可保存为 `.ps1` 或 `.json`
- 可从 `.ps1` 或 `.json` 配置重新生成 Word 模板

## 启动

Windows 下双击：

```bat
Start_Zhuanbao_Python_GUI.cmd
```

默认使用：

```text
D:\Anaconda\envs\CodexWorkSpace\pythonw.exe
```

如果需要改 Python 路径，编辑 `Start_Zhuanbao_Python_GUI.cmd`。

## 命令行生成

```bat
D:\Anaconda\envs\CodexWorkSpace\python.exe zhuanbao_docx.py --json zhuanbao.sample.json --template 专报格式模板.docx --output 示例专报成品.docx
```

## 文件说明

- `zhuanbao_gui.py`：图形界面
- `zhuanbao_docx.py`：JSON 转 Word 核心
- `zhuanbao_template.py`：模板读取、模板配置、模板生成核心
- `zhuanbao.sample.json`：示例内容
- `templates/standard_template.docx.b64`：默认模板的文本备份，程序可自动还原 `专报格式模板.docx`
- `使用说明_专报生成器.md`：中文使用说明
- `build_exe_when_pyinstaller_available.cmd`：安装 PyInstaller 后用于打包 exe

