.class final Lcom/umeng/message/proguard/ap;
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
    .line 764
    iput-object p1, p0, Lcom/umeng/message/proguard/ap;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/umeng/message/proguard/ap;->a:Landroid/content/Context;

    const-string v1, "Please replace \'\u3010\u5e94\u7528\u5305\u540d\u3011.intent.action.COMMAND\' with application\'s packageName for RegistrationReceiver in AndroidManifest!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 771
    return-void
.end method
