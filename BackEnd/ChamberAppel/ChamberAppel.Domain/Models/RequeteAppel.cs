using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace ChamberAppel.Domain.Models
{
    public class RequeteAppel
    {
        public Guid Id { get; set; }

        // رقم الملف
        public string? Numero_Dossier { get; set; }

        // طالب الإستئناف
        public string? Appelant { get; set; }

        // الحكم المستأنف عدد
        public string? Numero_Jugement_Faisant_Objet_De_Appel { get; set; }

        // الصادر بتاريخ
        public DateTime? Emis_En_Date_Du { get; set; }

        // المجلس الجهوي للحسابات لجهة
        public Guid IdCRC { get; set; }

        // المركز المحاسبي
        public string? Centre_Comptable { get; set; }

        //السنة المالية
        public DateTime? Exercice_fiscal { get; set; }

        // تاريخ تسجيل العريضة بالمجلس الجهوي للحسابات
        public DateTime? Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes { get; set; }

        // المستشار المقرر
        public string? Conseiller_Rapporteur { get; set; }

        // تاريخ تعيين المستشار المقرر
        public DateTime? Date_Ordonnance_Designation_Conseiller_Rapporteur { get; set; }

        // المستشار المقرر الخلف
        public string? Conseiller_Rapporteur_Remplacant { get; set; }

        // تاریخ  تعيين المستشار المقرر الخلف
        public DateTime? Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant { get; set; }

        // تاریخ طلب وثائق تكميلية
        public DateTime? Date_Demande_Documents_Supplementaires { get; set; }

        // تاريخ إرسال العريضة للأطراف
        public DateTime? Date_Envoi_Requete_Parties { get; set; }

        #region les parties

        // الأطراف - وكيل الملك لدى المجلس الجهوي للحسابات
        public string? Parties_Agent_du_Roi_au_CRC { get; set; }

        // الأطراف - الخازن الإقليمي
        public string? Parties_Entrepot_Regional { get; set; }

        // الأطراف - عامل الإقليم
        public string? Parties_Travailleur_du_territoire { get; set; }

        // الأطراف - رئيس الجماعة
        public string? Parties_President_de_la_Commune { get; set; }


        // تاريخ توصل الأطراف - وكيل الملك لدى المجلس الجهوي للحسابات
        public DateTime? Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC { get; set; }

        // تاريخ توصل الأطراف - الخازن الإقليمي
        public DateTime? Date_de_reception_par_les_parties_Entrepot_Regional { get; set; }

        // تاريخ توصل الأطراف - عامل الإقليم
        public DateTime? Date_de_reception_par_les_parties_Travailleur_du_territoire { get; set; }

        // تاريخ توصل الأطراف - رئيس الجماعة
        public DateTime? Date_de_reception_par_les_parties_President_de_la_Commune { get; set; }


        // رد على مذكرة الاستئناف - وكيل الملك لدى المجلس الجهوي للحسابات
        public string? Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC { get; set; }

        // رد على مذكرة الاستئناف - الخازن الإقليمي
        public string? Reponse_au_memoire_d_appel_Entrepot_Regional { get; set; }

        // رد على مذكرة الاستئناف - عامل الإقليم
        public string? Reponse_au_memoire_d_appel_Travailleur_du_territoire { get; set; }

        // رد على مذكرة الاستئناف - رئيس الجماعة
        public string? Reponse_au_memoire_d_appel_President_de_la_Commune { get; set; }

        #endregion les parties

        // تاريخ اعداد التقرير
        public DateTime? Date_Preparation_Rapport { get; set; }
        //  تعيين المستشار المراجع
        public string? Designation_du_Conseiller_Reviseur { get; set; }

        // تاريخ تعيين المستشار المراجع
        public DateTime? Date_Designation_du_Conseiller_Reviseur { get; set; }

        //  تعيين المستشار المراجع الخلف
        public string? Designation_du_Conseiller_Reviseur_Remplacant { get; set; }

        // تاريخ تعيين المستشار المراجع الخلف 
        public DateTime? Date_Designation_du_Conseiller_Reviseur_Remplacant { get; set; }

        //تاريخ اعداد راي المستشار المراجع
        public DateTime? Date_de_preparation_de_l_avis_de_l_examinateur { get; set; }

        // تاريخ إحالة الملف على النيابة العامة
        public DateTime? Date_Transmission_Dossier_Ministere_Public { get; set; }

        // تاريخ رجوع الملف من النيابة العامة
        public DateTime? Date_Retour_Dossier_Ministere_Public { get; set; }

        // تاریخ مستنتجات النيابة العامة
        public DateTime? Date_Conclusions_Ministere_Public { get; set; }

        // رقم مستنتجات النيابة العامة
        public string? Numero_Conclusions_Ministere_Public { get; set; }

        //تاريخ الجلسة
        public DateTime? Date_de_la_session { get; set; }

        // منطوق القرار
        public string? Dispositif_Decision { get; set; }

        // القرار عدد
        public string? Numero_Decision { get; set; }

        //تاريخ ارسال القرار قصد التبليغ الاطراف
        public DateTime? Date_d_envoi_de_la_decision_pour_notifier_les_parties { get; set; }

        //تاريخ  توصل المحاسب بنسخة من القرار
        public DateTime? Date_de_reception_par_le_comptable_d_une_copie_de_la_decision { get; set; }

        [MaxLength(80)]
        [Length(3, 80)]
        public string? UpdatedBy { get; set; }
        [DataType(DataType.DateTime)]
        public DateTime? UpdateTime { get; set; }
        public int IsActive { get; set; }

        [ForeignKey(nameof(IdCRC))]
        public CRC? CRC { get; set; }
    }
}
