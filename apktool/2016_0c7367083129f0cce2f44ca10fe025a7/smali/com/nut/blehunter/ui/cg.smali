.class final Lcom/nut/blehunter/ui/cg;
.super Ljava/lang/Object;
.source "LookForShareActivity.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LookForShareActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LookForShareActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nut/blehunter/ui/cg;->a:Lcom/nut/blehunter/ui/LookForShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nut/blehunter/ui/cg;->a:Lcom/nut/blehunter/ui/LookForShareActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/LookForShareActivity;->a(Lcom/nut/blehunter/ui/LookForShareActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 83
    return-void
.end method

.method public final onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
