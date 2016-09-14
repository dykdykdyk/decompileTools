.class final Lcom/loc/df;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/loc/df;->a:Z

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/df;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/loc/df;->c:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/loc/df;->d:I

    return-void
.end method
