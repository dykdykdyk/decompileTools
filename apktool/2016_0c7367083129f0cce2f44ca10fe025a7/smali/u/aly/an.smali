.class public final Lu/aly/an;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lu/aly/o;


# static fields
.field public static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:J

.field public f:Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/ak;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lu/aly/ao;

.field public j:Lu/aly/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/an;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput v1, p0, Lu/aly/an;->a:I

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/an;->b:Ljava/lang/String;

    .line 176
    iput-wide v2, p0, Lu/aly/an;->c:J

    .line 177
    iput-wide v2, p0, Lu/aly/an;->d:J

    .line 178
    iput-wide v2, p0, Lu/aly/an;->e:J

    .line 180
    iput-boolean v1, p0, Lu/aly/an;->f:Z

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/an;->h:Ljava/util/List;

    .line 184
    new-instance v0, Lu/aly/ao;

    invoke-direct {v0}, Lu/aly/ao;-><init>()V

    iput-object v0, p0, Lu/aly/an;->i:Lu/aly/ao;

    .line 185
    new-instance v0, Lu/aly/aj;

    invoke-direct {v0}, Lu/aly/aj;-><init>()V

    iput-object v0, p0, Lu/aly/an;->j:Lu/aly/aj;

    return-void
.end method


# virtual methods
.method public final a(Lu/aly/z;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    return-void
.end method
