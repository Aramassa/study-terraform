# study-terraform

## 0. terraform の基礎を学ぼう

Best Practices. https://www.terraform-best-practices.com/

### 0-1. terraform の基本コマンド

### 0-2. terraform の基本ファイル

* main.tf
* variables.tf
* terraform.tfvars
* outputs.tf

#### terraform.lock.hcl

* 使用したproviderのバージョンを固定化するためなどで利用している
* 実行の再現性を出すためにバージョン管理には含める必要がある

https://qiita.com/nyamada43/items/b8becb672ad572897c25

### 0-3. ディレクトリ構成を学ぼう

https://www.terraform-best-practices.com/code-structure

### 0-4. リソースを削除したい

https://fic.ntt.com/documents/tutorials/terraform/rsts/Terraform/major_commands.html#id5

> 3.2.2.2. terraform applyによる作成済みリソースの削除
一度 terraform apply を実行後、作業用ディレクトリのtfファイル内から、特定のresourceをセクションを削除し、再度 terraform apply を実行すると、 これは作成済みリソースに対する削除として動作します。

## 1. 基本操作編

### 1-1. AWSのS3バケットを作ってみよう

[Lesson 1-1](./1-1/)

### 1-2. IAM を操作してみよう

### 1-3. アウトプットを利用してみよう

