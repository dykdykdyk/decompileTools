.class Lretrofit/Platform$Base$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lretrofit/client/Client$Provider;


# instance fields
.field final synthetic this$0:Lretrofit/Platform$Base;

.field final synthetic val$client:Lretrofit/client/Client;


# direct methods
.method constructor <init>(Lretrofit/Platform$Base;Lretrofit/client/Client;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lretrofit/Platform$Base$1;->this$0:Lretrofit/Platform$Base;

    iput-object p2, p0, Lretrofit/Platform$Base$1;->val$client:Lretrofit/client/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lretrofit/client/Client;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lretrofit/Platform$Base$1;->val$client:Lretrofit/client/Client;

    return-object v0
.end method
