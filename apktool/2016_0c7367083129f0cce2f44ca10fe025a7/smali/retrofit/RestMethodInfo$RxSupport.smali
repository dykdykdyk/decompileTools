.class final Lretrofit/RestMethodInfo$RxSupport;
.super Ljava/lang/Object;
.source "RestMethodInfo.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObservableType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 496
    const-class v0, Lrx/h;

    invoke-static {p0, p1, v0}, Lretrofit/Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static isObservable(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 492
    const-class v0, Lrx/h;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
