.class Lretrofit/Platform$AppEngine$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lretrofit/client/Client$Provider;


# instance fields
.field final synthetic this$0:Lretrofit/Platform$AppEngine;

.field final synthetic val$client:Lretrofit/appengine/UrlFetchClient;


# direct methods
.method constructor <init>(Lretrofit/Platform$AppEngine;Lretrofit/appengine/UrlFetchClient;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lretrofit/Platform$AppEngine$1;->this$0:Lretrofit/Platform$AppEngine;

    iput-object p2, p0, Lretrofit/Platform$AppEngine$1;->val$client:Lretrofit/appengine/UrlFetchClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lretrofit/client/Client;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lretrofit/Platform$AppEngine$1;->val$client:Lretrofit/appengine/UrlFetchClient;

    return-object v0
.end method
