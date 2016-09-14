.class public final Lrx/c/a/n;
.super Ljava/lang/Object;
.source "OperatorMerge.java"


# static fields
.field public static final a:Lrx/c/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/m",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lrx/c/a/m;

    invoke-direct {v0}, Lrx/c/a/m;-><init>()V

    sput-object v0, Lrx/c/a/n;->a:Lrx/c/a/m;

    return-void
.end method
