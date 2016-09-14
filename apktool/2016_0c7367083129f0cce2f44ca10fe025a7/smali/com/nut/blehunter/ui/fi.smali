.class final Lcom/nut/blehunter/ui/fi;
.super Ljava/lang/Object;
.source "SafeRegionManageActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/SafeRegion;

.field final synthetic b:Lcom/nut/blehunter/ui/SafeRegionManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Lcom/nut/blehunter/entity/SafeRegion;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/nut/blehunter/ui/fi;->b:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/fi;->a:Lcom/nut/blehunter/entity/SafeRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nut/blehunter/ui/fi;->b:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/fi;->a:Lcom/nut/blehunter/entity/SafeRegion;

    iget-object v1, v1, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Ljava/lang/String;)V

    .line 170
    return-void
.end method
