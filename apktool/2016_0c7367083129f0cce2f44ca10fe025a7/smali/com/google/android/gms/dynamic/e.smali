.class public final Lcom/google/android/gms/dynamic/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/e;->a:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/dynamic/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/dynamic/e;->a:Landroid/content/Context;

    iget v1, p0, Lcom/google/android/gms/dynamic/e;->b:I

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzfd(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
