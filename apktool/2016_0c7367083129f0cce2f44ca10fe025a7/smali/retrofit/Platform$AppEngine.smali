.class Lretrofit/Platform$AppEngine;
.super Lretrofit/Platform$Base;
.source "Platform.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lretrofit/Platform$Base;-><init>(Lretrofit/Platform$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lretrofit/Platform$1;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lretrofit/Platform$AppEngine;-><init>()V

    return-void
.end method


# virtual methods
.method defaultClient()Lretrofit/client/Client$Provider;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lretrofit/appengine/UrlFetchClient;

    invoke-direct {v0}, Lretrofit/appengine/UrlFetchClient;-><init>()V

    .line 161
    new-instance v1, Lretrofit/Platform$AppEngine$1;

    invoke-direct {v1, p0, v0}, Lretrofit/Platform$AppEngine$1;-><init>(Lretrofit/Platform$AppEngine;Lretrofit/appengine/UrlFetchClient;)V

    return-object v1
.end method
