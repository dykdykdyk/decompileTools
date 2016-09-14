.class public final Lcom/twitter/sdk/android/core/identity/n;
.super Ljava/lang/Object;
.source "TwitterAuthClient.java"


# instance fields
.field public final a:Lcom/twitter/sdk/android/core/identity/b;

.field public final b:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->e()Lcom/twitter/sdk/android/core/q;

    move-result-object v0

    .line 1116
    iget-object v0, v0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->e()Lcom/twitter/sdk/android/core/q;

    move-result-object v1

    .line 2063
    iget-object v1, v1, Lcom/twitter/sdk/android/core/q;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 54
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->e()Lcom/twitter/sdk/android/core/q;

    move-result-object v2

    .line 2195
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->g()V

    .line 2196
    iget-object v2, v2, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/m;

    .line 54
    invoke-static {}, Lcom/twitter/sdk/android/core/identity/o;->a()Lcom/twitter/sdk/android/core/identity/b;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/identity/n;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/identity/b;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/identity/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/m",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;",
            "Lcom/twitter/sdk/android/core/identity/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/n;->a:Lcom/twitter/sdk/android/core/identity/b;

    .line 61
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/n;->d:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/n;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 63
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/n;->b:Lcom/twitter/sdk/android/core/m;

    .line 64
    return-void
.end method

.method public static a()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 4021
    sget-object v8, Lcom/twitter/sdk/android/core/internal/scribe/o;->a:Lcom/twitter/sdk/android/core/internal/scribe/a;

    .line 115
    if-nez v8, :cond_1

    .line 127
    :cond_0
    return-void

    .line 117
    :cond_1
    new-instance v6, Lcom/twitter/sdk/android/core/internal/scribe/d;

    invoke-direct {v6}, Lcom/twitter/sdk/android/core/internal/scribe/d;-><init>()V

    const-string v0, "android"

    .line 4091
    iput-object v0, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->a:Ljava/lang/String;

    .line 117
    const-string v0, "login"

    .line 4096
    iput-object v0, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->b:Ljava/lang/String;

    .line 117
    const-string v0, ""

    .line 4101
    iput-object v0, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->c:Ljava/lang/String;

    .line 117
    const-string v0, ""

    .line 4106
    iput-object v0, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->d:Ljava/lang/String;

    .line 117
    const-string v0, ""

    .line 4111
    iput-object v0, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->e:Ljava/lang/String;

    .line 117
    const-string v0, "impression"

    .line 4116
    iput-object v0, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->f:Ljava/lang/String;

    .line 4121
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/c;

    iget-object v1, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->a:Ljava/lang/String;

    iget-object v2, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->b:Ljava/lang/String;

    iget-object v3, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->c:Ljava/lang/String;

    iget-object v4, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->d:Ljava/lang/String;

    iget-object v5, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->e:Ljava/lang/String;

    iget-object v6, v6, Lcom/twitter/sdk/android/core/internal/scribe/d;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x1

    new-array v9, v1, [Lcom/twitter/sdk/android/core/internal/scribe/c;

    aput-object v0, v9, v7

    .line 5065
    iget-object v0, v8, Lcom/twitter/sdk/android/core/internal/scribe/a;->a:Lio/fabric/sdk/android/o;

    .line 5116
    iget-object v0, v0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 5065
    if-eqz v0, :cond_2

    .line 5066
    iget-object v0, v8, Lcom/twitter/sdk/android/core/internal/scribe/a;->a:Lio/fabric/sdk/android/o;

    .line 6116
    iget-object v0, v0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 5066
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 5070
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v6, v7

    .line 5076
    :goto_1
    if-gtz v6, :cond_0

    aget-object v1, v9, v7

    .line 5077
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/m;

    iget-object v5, v8, Lcom/twitter/sdk/android/core/internal/scribe/a;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/m;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/c;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Lcom/twitter/sdk/android/core/internal/scribe/g;)V

    .line 5076
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 5068
    :cond_2
    const-string v4, ""

    goto :goto_0
.end method
