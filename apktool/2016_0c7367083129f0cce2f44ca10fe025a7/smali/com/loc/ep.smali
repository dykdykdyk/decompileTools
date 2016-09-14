.class public final Lcom/loc/ep;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:Ljava/lang/String;

.field f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ep;->d:Z

    const-string v0, "standard"

    iput-object v0, p0, Lcom/loc/ep;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ep;->f:[Ljava/lang/String;

    iput-object p2, p0, Lcom/loc/ep;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/ep;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/ep;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/loc/eo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/h;
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/ep;->f:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/h;

    const-string v1, "sdk packages is null"

    invoke-direct {v0, v1}, Lcom/loc/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/loc/eo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/eo;-><init>(Lcom/loc/ep;B)V

    return-object v0
.end method

.method public final a([Ljava/lang/String;)Lcom/loc/ep;
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/ep;->f:[Ljava/lang/String;

    return-object p0
.end method
