# EWNumberTextField
[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)

Swift.10行代码为TextField添加金额输入限制

## 实现效果:
通过textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool 代理方法对textField输入内容进行限制，保证只能输入有效金额。

## 实现思路：
首先设置TextField的keyboardType为.decimalPad,只能输入数字与小数点。之后在代理方法中，对输入字符为"."和"0"两种情况进行限制。

