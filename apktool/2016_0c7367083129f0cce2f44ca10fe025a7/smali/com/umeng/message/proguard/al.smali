.class final Lcom/umeng/message/proguard/al;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/umeng/message/proguard/al;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/umeng/message/proguard/al;->a:Landroid/content/Context;

    const-string v1, "Please add or correct UmengDownloadResourceService in AndroidManifest!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1132
    return-void
.end method
