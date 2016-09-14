.class final enum Lcom/sina/weibo/sdk/c/e;
.super Ljava/lang/Enum;
.source "LogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sina/weibo/sdk/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sina/weibo/sdk/c/e;

.field public static final enum b:Lcom/sina/weibo/sdk/c/e;

.field public static final enum c:Lcom/sina/weibo/sdk/c/e;

.field public static final enum d:Lcom/sina/weibo/sdk/c/e;

.field public static final enum e:Lcom/sina/weibo/sdk/c/e;

.field private static final synthetic f:[Lcom/sina/weibo/sdk/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/sina/weibo/sdk/c/e;

    const-string v1, "SESSION_START"

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/c/e;->a:Lcom/sina/weibo/sdk/c/e;

    new-instance v0, Lcom/sina/weibo/sdk/c/e;

    const-string v1, "SESSION_END"

    invoke-direct {v0, v1, v3}, Lcom/sina/weibo/sdk/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/c/e;->b:Lcom/sina/weibo/sdk/c/e;

    new-instance v0, Lcom/sina/weibo/sdk/c/e;

    const-string v1, "FRAGMENT"

    invoke-direct {v0, v1, v4}, Lcom/sina/weibo/sdk/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/c/e;->c:Lcom/sina/weibo/sdk/c/e;

    new-instance v0, Lcom/sina/weibo/sdk/c/e;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v5}, Lcom/sina/weibo/sdk/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/c/e;->d:Lcom/sina/weibo/sdk/c/e;

    new-instance v0, Lcom/sina/weibo/sdk/c/e;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v6}, Lcom/sina/weibo/sdk/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/c/e;->e:Lcom/sina/weibo/sdk/c/e;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sina/weibo/sdk/c/e;

    sget-object v1, Lcom/sina/weibo/sdk/c/e;->a:Lcom/sina/weibo/sdk/c/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sina/weibo/sdk/c/e;->b:Lcom/sina/weibo/sdk/c/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sina/weibo/sdk/c/e;->c:Lcom/sina/weibo/sdk/c/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sina/weibo/sdk/c/e;->d:Lcom/sina/weibo/sdk/c/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sina/weibo/sdk/c/e;->e:Lcom/sina/weibo/sdk/c/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sina/weibo/sdk/c/e;->f:[Lcom/sina/weibo/sdk/c/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/weibo/sdk/c/e;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sina/weibo/sdk/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/c/e;

    return-object v0
.end method

.method public static values()[Lcom/sina/weibo/sdk/c/e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sina/weibo/sdk/c/e;->f:[Lcom/sina/weibo/sdk/c/e;

    array-length v1, v0

    new-array v2, v1, [Lcom/sina/weibo/sdk/c/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
