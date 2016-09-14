.class public final enum Lrx/c/a/b;
.super Ljava/lang/Enum;
.source "EmptyObservableHolder.java"

# interfaces
.implements Lrx/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/c/a/b;",
        ">;",
        "Lrx/i",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrx/c/a/b;

.field static final b:Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lrx/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lrx/c/a/b;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lrx/c/a/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/c/a/b;->a:Lrx/c/a/b;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/c/a/b;

    const/4 v1, 0x0

    sget-object v2, Lrx/c/a/b;->a:Lrx/c/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lrx/c/a/b;->c:[Lrx/c/a/b;

    .line 41
    sget-object v0, Lrx/c/a/b;->a:Lrx/c/a/b;

    invoke-static {v0}, Lrx/h;->a(Lrx/i;)Lrx/h;

    move-result-object v0

    sput-object v0, Lrx/c/a/b;->b:Lrx/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lrx/c/a/b;->b:Lrx/h;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/c/a/b;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lrx/c/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/c/a/b;

    return-object v0
.end method

.method public static values()[Lrx/c/a/b;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lrx/c/a/b;->c:[Lrx/c/a/b;

    invoke-virtual {v0}, [Lrx/c/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/c/a/b;

    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lrx/t;

    .line 1045
    invoke-virtual {p1}, Lrx/t;->onCompleted()V

    .line 26
    return-void
.end method
