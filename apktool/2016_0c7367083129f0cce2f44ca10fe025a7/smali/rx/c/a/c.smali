.class public final Lrx/c/a/c;
.super Ljava/lang/Object;
.source "NotificationLite.java"


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
.field private static final a:Lrx/c/a/c;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lrx/c/a/c;

    invoke-direct {v0}, Lrx/c/a/c;-><init>()V

    sput-object v0, Lrx/c/a/c;->a:Lrx/c/a/c;

    .line 55
    new-instance v0, Lrx/c/a/d;

    invoke-direct {v0}, Lrx/c/a/d;-><init>()V

    sput-object v0, Lrx/c/a/c;->b:Ljava/lang/Object;

    .line 64
    new-instance v0, Lrx/c/a/e;

    invoke-direct {v0}, Lrx/c/a/e;-><init>()V

    sput-object v0, Lrx/c/a/c;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    sget-object p0, Lrx/c/a/c;->c:Ljava/lang/Object;

    .line 99
    :cond_0
    return-object p0
.end method

.method public static a()Lrx/c/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/c/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lrx/c/a/c;->a:Lrx/c/a/c;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lrx/c/a/c;->c:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
