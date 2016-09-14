.class final Lcom/nut/blehunter/ui/bb;
.super Lcom/nut/blehunter/rxApi/j;
.source "InputNameActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/InputNameActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/InputNameActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/nut/blehunter/ui/bb;->a:Lcom/nut/blehunter/ui/InputNameActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nut/blehunter/ui/bb;->a:Lcom/nut/blehunter/ui/InputNameActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 131
    iget-object v0, p0, Lcom/nut/blehunter/ui/bb;->a:Lcom/nut/blehunter/ui/InputNameActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 132
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nut/blehunter/ui/bb;->a:Lcom/nut/blehunter/ui/InputNameActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 120
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-class v1, Lcom/nut/blehunter/entity/SafeRegion;

    .line 1049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    check-cast v0, Lcom/nut/blehunter/entity/SafeRegion;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/nut/blehunter/ui/bb;->a:Lcom/nut/blehunter/ui/InputNameActivity;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/InputNameActivity;->a(Lcom/nut/blehunter/ui/InputNameActivity;Lcom/nut/blehunter/entity/SafeRegion;)V

    .line 126
    :cond_0
    return-void
.end method
