.class final Lcom/nut/blehunter/ui/dc;
.super Ljava/lang/Object;
.source "MapLocationActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nut/blehunter/entity/Nut;

.field final synthetic c:Landroid/graphics/Bitmap;

.field final synthetic d:Z

.field final synthetic e:Lcom/nut/blehunter/ui/MapLocationActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MapLocationActivity;Lcom/nut/blehunter/entity/Nut;Landroid/graphics/Bitmap;Z)V
    .locals 1

    .prologue
    .line 751
    iput-object p1, p0, Lcom/nut/blehunter/ui/dc;->e:Lcom/nut/blehunter/ui/MapLocationActivity;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/dc;->a:I

    iput-object p2, p0, Lcom/nut/blehunter/ui/dc;->b:Lcom/nut/blehunter/entity/Nut;

    iput-object p3, p0, Lcom/nut/blehunter/ui/dc;->c:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/nut/blehunter/ui/dc;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 2

    .prologue
    .line 754
    new-instance v0, Lcom/nut/blehunter/c/b;

    invoke-direct {v0}, Lcom/nut/blehunter/c/b;-><init>()V

    .line 755
    iget-object v0, p0, Lcom/nut/blehunter/ui/dc;->e:Lcom/nut/blehunter/ui/MapLocationActivity;

    iget v1, p0, Lcom/nut/blehunter/ui/dc;->a:I

    invoke-static {v0, v1}, Lcom/nut/blehunter/c/b;->a(Landroid/content/Context;I)Lcom/nut/blehunter/c/g;

    move-result-object v0

    .line 757
    new-instance v1, Lcom/nut/blehunter/ui/dd;

    invoke-direct {v1, p0, v0}, Lcom/nut/blehunter/ui/dd;-><init>(Lcom/nut/blehunter/ui/dc;Lcom/nut/blehunter/c/g;)V

    invoke-interface {v0, v1}, Lcom/nut/blehunter/c/g;->a(Lcom/nut/blehunter/c/a;)Z

    .line 768
    return-void
.end method
