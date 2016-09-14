.class public final Lcom/loc/db;
.super Lcom/loc/bk;
.source "LocationRequest.java"


# instance fields
.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/String;

.field h:[B

.field i:Z

.field j:Ljava/lang/String;

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/eo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/loc/bk;-><init>(Landroid/content/Context;Lcom/loc/eo;)V

    iput-object v1, p0, Lcom/loc/db;->f:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/db;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/db;->h:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/db;->i:Z

    iput-object v1, p0, Lcom/loc/db;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/db;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/db;->k:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/db;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/db;->i:Z

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final h()[B
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->h:[B

    return-object v0
.end method

.method public final i()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
