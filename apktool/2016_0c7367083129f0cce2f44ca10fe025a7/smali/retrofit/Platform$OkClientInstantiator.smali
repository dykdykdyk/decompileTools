.class Lretrofit/Platform$OkClientInstantiator;
.super Ljava/lang/Object;
.source "Platform.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instantiate()Lretrofit/client/Client;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lretrofit/client/OkClient;

    invoke-direct {v0}, Lretrofit/client/OkClient;-><init>()V

    return-object v0
.end method
