.class public final Lrx/c/d/x;
.super Ljava/lang/Object;
.source "UtilityFunctions.java"


# static fields
.field private static final a:Lrx/c/d/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lrx/c/d/z;

    invoke-direct {v0}, Lrx/c/d/z;-><init>()V

    sput-object v0, Lrx/c/d/x;->a:Lrx/c/d/z;

    return-void
.end method

.method public static a()Lrx/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/b/f",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lrx/c/d/y;

    invoke-direct {v0}, Lrx/c/d/y;-><init>()V

    return-object v0
.end method
