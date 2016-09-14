.class public final Lio/fabric/sdk/android/b;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/b;->a:Ljava/util/Set;

    .line 87
    iput-object p1, p0, Lio/fabric/sdk/android/b;->b:Landroid/app/Application;

    .line 88
    return-void
.end method
