.class Lretrofit/Endpoints$FixedEndpoint;
.super Ljava/lang/Object;
.source "Endpoints.java"

# interfaces
.implements Lretrofit/Endpoint;


# instance fields
.field private final apiUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lretrofit/Endpoints$FixedEndpoint;->apiUrl:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lretrofit/Endpoints$FixedEndpoint;->name:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lretrofit/Endpoints$FixedEndpoint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lretrofit/Endpoints$FixedEndpoint;->apiUrl:Ljava/lang/String;

    return-object v0
.end method
