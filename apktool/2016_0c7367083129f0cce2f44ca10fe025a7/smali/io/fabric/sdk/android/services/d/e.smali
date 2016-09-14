.class public final Lio/fabric/sdk/android/services/d/e;
.super Ljava/lang/Object;
.source "PreferenceStoreStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lio/fabric/sdk/android/services/d/c;

.field public final b:Lio/fabric/sdk/android/services/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/d/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/d/c;Lio/fabric/sdk/android/services/d/f;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/d/c;",
            "Lio/fabric/sdk/android/services/d/f",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/fabric/sdk/android/services/d/e;->a:Lio/fabric/sdk/android/services/d/c;

    .line 33
    iput-object p2, p0, Lio/fabric/sdk/android/services/d/e;->b:Lio/fabric/sdk/android/services/d/f;

    .line 34
    iput-object p3, p0, Lio/fabric/sdk/android/services/d/e;->c:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lio/fabric/sdk/android/services/d/e;->a:Lio/fabric/sdk/android/services/d/c;

    iget-object v1, p0, Lio/fabric/sdk/android/services/d/e;->a:Lio/fabric/sdk/android/services/d/c;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/d/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lio/fabric/sdk/android/services/d/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/fabric/sdk/android/services/d/e;->b:Lio/fabric/sdk/android/services/d/f;

    invoke-interface {v3, p1}, Lio/fabric/sdk/android/services/d/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/d/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 41
    return-void
.end method
