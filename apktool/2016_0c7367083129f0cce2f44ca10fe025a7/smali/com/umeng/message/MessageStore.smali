.class public Lcom/umeng/message/MessageStore;
.super Ljava/lang/Object;
.source "MessageStore.java"


# static fields
.field public static final ActionType:Ljava/lang/String; = "ActionType"

.field public static final ArrivalTime:Ljava/lang/String; = "ArrivalTime"

.field public static final Id:Ljava/lang/String; = "_id"

.field public static final Json:Ljava/lang/String; = "Json"

.field public static final MsgId:Ljava/lang/String; = "MsdId"

.field public static final SdkVersion:Ljava/lang/String; = "SdkVersion"

.field public static instance:Lcom/umeng/message/MessageStore;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/umeng/message/MessageStore$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/MessageStore;->a:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/umeng/message/MessageStore$a;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/MessageStore$a;-><init>(Lcom/umeng/message/MessageStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/message/MessageStore;->c:Lcom/umeng/message/MessageStore$a;

    .line 29
    iget-object v0, p0, Lcom/umeng/message/MessageStore;->c:Lcom/umeng/message/MessageStore$a;

    invoke-virtual {v0}, Lcom/umeng/message/MessageStore$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/MessageStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageStore;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/umeng/message/MessageStore;->instance:Lcom/umeng/message/MessageStore;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/umeng/message/MessageStore;

    invoke-direct {v0, p0}, Lcom/umeng/message/MessageStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/MessageStore;->instance:Lcom/umeng/message/MessageStore;

    .line 22
    :cond_0
    sget-object v0, Lcom/umeng/message/MessageStore;->instance:Lcom/umeng/message/MessageStore;

    return-object v0
.end method
