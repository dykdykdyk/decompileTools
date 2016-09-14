.class public final Lcom/loc/dg;
.super Ljava/lang/Object;
.source "OtherServiceEntity.java"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/loc/dg;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/dg;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/dg;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/dg;->d:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/dg;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/loc/dg;->f:Z

    return-void
.end method
