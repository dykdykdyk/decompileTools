.class final enum Lretrofit/RequestInterceptorTape$Command$2;
.super Lretrofit/RequestInterceptorTape$Command;
.source "RequestInterceptorTape.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestInterceptorTape$Command;-><init>(Ljava/lang/String;ILretrofit/RequestInterceptorTape$1;)V

    return-void
.end method


# virtual methods
.method public final intercept(Lretrofit/RequestInterceptor$RequestFacade;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-interface {p1, p2, p3}, Lretrofit/RequestInterceptor$RequestFacade;->addPathParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
