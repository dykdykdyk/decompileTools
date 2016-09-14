.class final Lcom/bingerz/android/countrycodepicker/c;
.super Ljava/lang/Object;
.source "CountryCodeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;


# direct methods
.method constructor <init>(Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bingerz/android/countrycodepicker/c;->a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/c;->a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;

    invoke-static {v0}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->b(Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    sget-object v2, Lcom/bingerz/android/countrycodepicker/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/c;->a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 61
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/c;->a:Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;

    invoke-virtual {v0}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->finish()V

    .line 62
    return-void
.end method
