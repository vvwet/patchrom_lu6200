.class public Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;
.super Lcom/broadcom/bt/util/mime4j/field/address/parser/BaseNode;
.source "SimpleNode.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;


# instance fields
.field protected children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

.field protected id:I

.field protected parent:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

.field protected parser:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/BaseNode;-><init>()V

    .line 29
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->id:I

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;I)V
    .locals 0
    .parameter "p"
    .parameter "i"

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;-><init>(I)V

    .line 34
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->parser:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;

    .line 35
    return-void
.end method


# virtual methods
.method public childrenAccept(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "visitor"
    .parameter "data"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    if-eqz v1, :cond_0

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;->jjtAccept(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0           #i:I
    :cond_0
    return-object p2
.end method

.method public dump(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    .line 93
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    if-eqz v2, :cond_1

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    aget-object v1, v2, v0

    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;

    .line 97
    .local v1, n:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;
    if-eqz v1, :cond_0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->dump(Ljava/lang/String;)V

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0           #i:I
    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;
    :cond_1
    return-void
.end method

.method public jjtAccept(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "visitor"
    .parameter "data"

    .prologue
    .line 67
    invoke-interface {p1, p0, p2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserVisitor;->visit(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public jjtAddChild(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;I)V
    .locals 4
    .parameter "n"
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    if-nez v1, :cond_1

    .line 48
    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    .line 54
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    aput-object p1, v1, p2

    .line 55
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    array-length v1, v1

    if-lt p2, v1, :cond_0

    .line 50
    add-int/lit8 v1, p2, 0x1

    new-array v0, v1, [Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    .line 51
    .local v0, c:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    goto :goto_0
.end method

.method public jjtClose()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public jjtGetChild(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    .locals 1
    .parameter "i"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public jjtGetNumChildren()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->children:[Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    array-length v0, v0

    goto :goto_0
.end method

.method public jjtGetParent()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->parent:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    return-object v0
.end method

.method public jjtOpen()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public jjtSetParent(Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->parent:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->id:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
