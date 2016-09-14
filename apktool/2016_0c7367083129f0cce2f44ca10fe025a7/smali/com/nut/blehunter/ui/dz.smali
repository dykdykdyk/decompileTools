.class final Lcom/nut/blehunter/ui/dz;
.super Ljava/lang/Object;
.source "NutDetailActivity.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/NutDetailActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutDetailActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/nut/blehunter/ui/dz;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nut/blehunter/ui/dz;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->a(Lcom/nut/blehunter/ui/NutDetailActivity;Z)Z

    .line 134
    return-void
.end method

.method public final onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/nut/blehunter/ui/dz;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->a(Lcom/nut/blehunter/ui/NutDetailActivity;Z)Z

    .line 125
    iget-object v0, p0, Lcom/nut/blehunter/ui/dz;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/dz;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->a(Lcom/nut/blehunter/ui/NutDetailActivity;)Lcom/nut/blehunter/entity/f;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nut/blehunter/ui/NutDetailActivity;->a(Lcom/nut/blehunter/ui/NutDetailActivity;Lcom/nut/blehunter/entity/f;Landroid/graphics/Bitmap;)V

    .line 126
    iget-object v0, p0, Lcom/nut/blehunter/ui/dz;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->b(Lcom/nut/blehunter/ui/NutDetailActivity;)V

    .line 127
    iget-object v0, p0, Lcom/nut/blehunter/ui/dz;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->c(Lcom/nut/blehunter/ui/NutDetailActivity;)V

    .line 129
    :cond_0
    return-void
.end method

.method public final onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
