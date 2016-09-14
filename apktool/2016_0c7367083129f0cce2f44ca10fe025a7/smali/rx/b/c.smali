.class public final Lrx/b/c;
.super Ljava/lang/Object;
.source "Actions.java"


# static fields
.field private static final a:Lrx/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lrx/b/d;

    invoke-direct {v0}, Lrx/b/d;-><init>()V

    sput-object v0, Lrx/b/c;->a:Lrx/b/d;

    return-void
.end method

.method public static a()Lrx/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/b/d",
            "<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lrx/b/c;->a:Lrx/b/d;

    return-object v0
.end method
