.class public final Lu/aly/al;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/ag;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/ag;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/an;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lu/aly/aa;

.field public e:Lu/aly/af;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lu/aly/ab;

.field public h:Lu/aly/ac;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/ah;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/al;->a:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/al;->b:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/al;->c:Ljava/util/List;

    .line 122
    new-instance v0, Lu/aly/aa;

    invoke-direct {v0}, Lu/aly/aa;-><init>()V

    iput-object v0, p0, Lu/aly/al;->d:Lu/aly/aa;

    .line 124
    new-instance v0, Lu/aly/af;

    invoke-direct {v0}, Lu/aly/af;-><init>()V

    iput-object v0, p0, Lu/aly/al;->e:Lu/aly/af;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/al;->f:Ljava/util/Map;

    .line 128
    new-instance v0, Lu/aly/ab;

    invoke-direct {v0}, Lu/aly/ab;-><init>()V

    iput-object v0, p0, Lu/aly/al;->g:Lu/aly/ab;

    .line 130
    new-instance v0, Lu/aly/ac;

    invoke-direct {v0}, Lu/aly/ac;-><init>()V

    iput-object v0, p0, Lu/aly/al;->h:Lu/aly/ac;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/al;->i:Ljava/util/List;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/al;->j:Ljava/lang/String;

    return-void
.end method
