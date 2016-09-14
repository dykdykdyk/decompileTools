.class public final Lcom/c/a/c/a;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/c/a/c/a;->a:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/c/a/c/a;->b:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/c/a/c/a;->c:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/c/a/c/a;->d:Ljava/lang/String;

    .line 15
    iput-wide v2, p0, Lcom/c/a/c/a;->e:J

    .line 16
    iput-wide v2, p0, Lcom/c/a/c/a;->f:J

    return-void
.end method
