.class final Lcom/nut/blehunter/ui/v;
.super Lcom/nut/blehunter/rxApi/j;
.source "BindPhoneActivity.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nut/blehunter/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/nut/blehunter/ui/v;->c:Lcom/nut/blehunter/ui/BindPhoneActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/v;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nut/blehunter/ui/v;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/nut/blehunter/ui/v;->c:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)V

    .line 511
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/nut/blehunter/ui/v;->c:Lcom/nut/blehunter/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/v;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/v;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method
