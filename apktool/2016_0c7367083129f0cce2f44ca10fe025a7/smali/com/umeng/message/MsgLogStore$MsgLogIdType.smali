.class public Lcom/umeng/message/MsgLogStore$MsgLogIdType;
.super Ljava/lang/Object;
.source "MsgLogStore.java"


# instance fields
.field final synthetic a:Lcom/umeng/message/MsgLogStore;

.field public msgId:Ljava/lang/String;

.field public msgType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/message/MsgLogStore;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 606
    iput-object p1, p0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->a:Lcom/umeng/message/MsgLogStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const-string v0, "MsgId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgId:Ljava/lang/String;

    .line 609
    const-string v0, "MsgType"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgType:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public constructor <init>(Lcom/umeng/message/MsgLogStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->a:Lcom/umeng/message/MsgLogStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p2, p0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgId:Ljava/lang/String;

    .line 603
    iput-object p3, p0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgType:Ljava/lang/String;

    .line 604
    return-void
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 614
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 615
    const-string v1, "MsgId"

    iget-object v2, p0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v1, "MsgType"

    iget-object v2, p0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-object v0
.end method
