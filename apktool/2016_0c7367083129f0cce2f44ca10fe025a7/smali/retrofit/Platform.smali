.class abstract Lretrofit/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field static final HAS_RX_JAVA:Z

.field private static final PLATFORM:Lretrofit/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lretrofit/Platform;->findPlatform()Lretrofit/Platform;

    move-result-object v0

    sput-object v0, Lretrofit/Platform;->PLATFORM:Lretrofit/Platform;

    .line 40
    invoke-static {}, Lretrofit/Platform;->hasRxJavaOnClasspath()Z

    move-result v0

    sput-boolean v0, Lretrofit/Platform;->HAS_RX_JAVA:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lretrofit/Platform;->hasOkHttpOnClasspath()Z

    move-result v0

    return v0
.end method

.method private static findPlatform()Lretrofit/Platform;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lretrofit/Platform$Android;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lretrofit/Platform$Android;-><init>(Lretrofit/Platform$1;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 55
    :cond_0
    const-string v0, "com.google.appengine.runtime.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lretrofit/Platform$AppEngine;

    invoke-direct {v0, v2}, Lretrofit/Platform$AppEngine;-><init>(Lretrofit/Platform$1;)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lretrofit/Platform$Base;

    invoke-direct {v0, v2}, Lretrofit/Platform$Base;-><init>(Lretrofit/Platform$1;)V

    goto :goto_0
.end method

.method static get()Lretrofit/Platform;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lretrofit/Platform;->PLATFORM:Lretrofit/Platform;

    return-object v0
.end method

.method private static hasOkHttpOnClasspath()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    :try_start_0
    const-string v0, "com.squareup.okhttp.OkUrlFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 180
    :goto_0
    :try_start_1
    const-string v3, "com.squareup.okhttp.OkHttpClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_1
    if-eq v1, v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Retrofit detected an unsupported OkHttp on the classpath.\nTo use OkHttp with this version of Retrofit, you\'ll need:\n1. com.squareup.okhttp:okhttp:1.6.0 (or newer)\n2. com.squareup.okhttp:okhttp-urlconnection:1.6.0 (or newer)\nNote that OkHttp 2.0.0+ is supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_1

    .line 194
    :cond_0
    return v1
.end method

.method private static hasRxJavaOnClasspath()Z
    .locals 1

    .prologue
    .line 209
    :try_start_0
    const-string v0, "rx.h"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract defaultCallbackExecutor()Ljava/util/concurrent/Executor;
.end method

.method abstract defaultClient()Lretrofit/client/Client$Provider;
.end method

.method abstract defaultConverter()Lretrofit/converter/Converter;
.end method

.method abstract defaultHttpExecutor()Ljava/util/concurrent/Executor;
.end method

.method abstract defaultLog()Lretrofit/RestAdapter$Log;
.end method
