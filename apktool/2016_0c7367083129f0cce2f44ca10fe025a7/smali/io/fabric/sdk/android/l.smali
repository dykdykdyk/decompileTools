.class public interface abstract Lio/fabric/sdk/android/l;
.super Ljava/lang/Object;
.source "InitializationCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lio/fabric/sdk/android/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lio/fabric/sdk/android/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/m;-><init>(B)V

    sput-object v0, Lio/fabric/sdk/android/l;->d:Lio/fabric/sdk/android/l;

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method
