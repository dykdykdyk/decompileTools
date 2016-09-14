.class final Lcom/nut/blehunter/ui/bc;
.super Lcom/nut/blehunter/rxApi/j;
.source "InputNameActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/SafeRegion;

.field final synthetic b:Lcom/nut/blehunter/ui/InputNameActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/InputNameActivity;Lcom/nut/blehunter/entity/SafeRegion;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nut/blehunter/ui/bc;->b:Lcom/nut/blehunter/ui/InputNameActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/bc;->a:Lcom/nut/blehunter/entity/SafeRegion;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nut/blehunter/ui/bc;->b:Lcom/nut/blehunter/ui/InputNameActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 151
    iget-object v0, p0, Lcom/nut/blehunter/ui/bc;->b:Lcom/nut/blehunter/ui/InputNameActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 152
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nut/blehunter/ui/bc;->b:Lcom/nut/blehunter/ui/InputNameActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 145
    iget-object v0, p0, Lcom/nut/blehunter/ui/bc;->b:Lcom/nut/blehunter/ui/InputNameActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/bc;->a:Lcom/nut/blehunter/entity/SafeRegion;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/InputNameActivity;->a(Lcom/nut/blehunter/ui/InputNameActivity;Lcom/nut/blehunter/entity/SafeRegion;)V

    .line 146
    return-void
.end method
