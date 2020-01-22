<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use PDF;

	class AdminTbLaporController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "nama_pelapor";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "tb_lapor";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"No Ticket","name"=>"no_ticket"];
			$this->col[] = ["label"=>"Nama Pelapor","name"=>"nama_pelapor"];
			$this->col[] = ["label"=>"Satuan Kerja","name"=>"id_skpd","join"=>"tb_skpd,satuan_kerja"];
			$this->col[] = ["label"=>"Isi Ticket","name"=>"isi_ticket"];
			$this->col[] = ["label"=>"Tanggal Masuk","name"=>"created_at"];
			// $this->col[] = ["label"=>"Tindak Lanjut","name"=>"id_tindak_lanjut","join"=>"tb_tindak_lanjut,nama_tindak_lanjut"];
			$this->col[] = ["label"=>"Jenis Kendala","name"=>"id_bidang_keahlian","join"=>"tb_bidang_keahlian,bidang_keahlian"];
			$this->col[] = ["label"=>"Status Ticket","name"=>"status"];
			$this->col[] = ["label"=>"Tingkat Prioritas Laporan","name"=>"id_priority","join"=>"tb_priority,tingkat_priority"];
			// $this->col[] = ["label"=>"Petugas Pelaksana","name"=>"id_petugas","join"=>"tb_petugas,nama_petugas"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'No Ticket','name'=>'no_ticket','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10','readonly'=>'true'];
			$this->form[] = ['label'=>'Nama Pelapor','name'=>'nama_pelapor','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Satuan Kerja','name'=>'id_skpd','type'=>'datamodal','width'=>'col-sm-10','datamodal_table'=>'tb_skpd','datamodal_columns'=>'satuan_kerja,email'];
			$this->form[] = ['label'=>'Isi Ticket','name'=>'isi_ticket','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			// $this->form[] = ['label'=>'Tindak Lanjut','name'=>'id_tindak_lanjut','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tb_tindak_lanjut,nama_tindak_lanjut'];
			$this->form[] = ['label'=>'Jenis Kendala','name'=>'id_bidang_keahlian','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tb_bidang_keahlian,bidang_keahlian'];
			$this->form[] = ['label'=>'Status Ticket','name'=>'status','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10','readonly'=>'true','value'=>'Belum Selesai'];
			// $this->form[] = ['label'=>'Petugas','name'=>'id_petugas','type'=>'datamodal','width'=>'col-sm-10','datamodal_table'=>'tb_petugas','datamodal_columns'=>'nip,nama_petugas'];
			$this->form[] = ['label'=>'Tingkat Prioritas Laporan','name'=>'id_priority','type'=>'select2','validation'=>'required|min:0','width'=>'col-sm-10','datatable'=>'tb_priority,tingkat_priority'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Nama Pelapor','name'=>'nama_pelapor','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Satuan Kerja','name'=>'satuan_kerja','type'=>'datamodal','datamodal_table'=>'tb_skpd','datamodal_where'=>'','datamodal_columns'=>'satuan_kerja,email','datamodal_columns_alias'=>'Nama Instansi,Email','required'=>true];
			//$this->form[] = ['label'=>'Isi Ticket','name'=>'isi_ticket','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Tindak Lanjut','name'=>'id_tindak_lanjut','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tb_tindak_lanjut,nama_tindak_lanjut'];
			//$this->form[] = ['label'=>'Jenis Kendala','name'=>'id_bidang_keahlian','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tb_bidang_keahlian,bidang_keahlian'];
			//$this->form[] = ['label'=>'Status Ticket','name'=>'status','type'=>'text','value'=>'Belum Selesai','validation'=>'required|min:1|max:255','width'=>'col-sm-10','readonly'=>'true'];
			//// $this->form[] = ['label'=>'Petugas ','name'=>'id_petugas','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tb_petugas,nama_petugas'];
			//// $this->form[] = ['label'=>'Tingkat Prioritas Laporan','name'=>'priority_level','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Petugas','name'=>'id_petugas','type'=>'datamodal','datamodal_table'=>'tb_petugas','datamodal_where'=>'','datamodal_columns'=>'nip,nama_petugas','datamodal_columns_alias'=>'NIP,Nama Petugas','required'=>true];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
			$this->addaction = array();
			// $this->addaction[] = ['url'=>CRUDBooster::mainpath('set-status/Selesai/[id]'),'icon'=>'fa fa-check','color'=>'success']; 
			// $this->addaction[] = ['url'=>CRUDBooster::mainpath('rekap-lapor/Selesai/[id]'),'icon'=>'fa fa-check','color'=>'success']; 




	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
			$this->index_button = array();
			// $this->index_button[] = ['url'=>CRUDBooster::mainpath('set-status/Selesai/[id]'),'label'=>'Verifikasi','icon'=>'fa fa-check','color'=>'success'];
			$this->index_button[] = ['url'=>CRUDBooster::mainpath('rekap-lapor/'),'label'=>'Cetak Lapor','icon'=>'fa fa-print','color'=>'success'];
			$this->index_button[] = ['url'=>CRUDBooster::mainpath('rekap-rank/'),'label'=>'Cetak Rank','icon'=>'fa fa-print','color'=>'success'];





	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
			$this->index_statistic = array();
			$this->index_statistic[] = ['label'=>'Total Laporan','count'=>DB::table('tb_lapor')->count(),'icon'=>'fa fa-check','color'=>'success'];


	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        $this->load_js[] = asset("js/ticket.js");
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
			//Your code here

	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

		}

		// public function getSetStatus($status,$id) {
		// 	DB::table('tb_lapor')->where('id',$id)->update(['status'=>$status]);
		// 	CRUDBooster::redirect($_SERVER['HTTP_REFERER'],"Pekerjaan telah diselesaikan!","Selesai");
		// }


		public function getRekapLapor(){
			$data['tb_lapor'] = DB::table('tb_lapor')
						->join('tb_disposisi','tb_disposisi.id_lapor','=','tb_lapor.id')
						->join('tb_skpd','tb_skpd.id','=','tb_lapor.id_skpd')
						->join('tb_bidang_keahlian','tb_bidang_keahlian.id','=','tb_lapor.id_bidang_keahlian')
						->join('cms_users', 'tb_disposisi.id_petugas','=','cms_users.id')
						->SELECT ('tb_lapor.id_skpd','tb_skpd.satuan_kerja','tb_bidang_keahlian.bidang_keahlian','tb_lapor.created_at','tb_disposisi.created_at','tb_disposisi.id_petugas','cms_users.name','tb_lapor.status')
						->where('tb_lapor.status', "Selesai")
						->get();
  	        $data['tb_disposisi'] = DB::table('tb_disposisi')
						->get();
			$data['tb_petugas'] = DB::table('tb_petugas')
						->get();
			$data['tb_skpd'] = DB::table('tb_skpd')
						->get();
	 		$pdf = PDF::loadView('rekap_bul',$data)
				  ->setPaper('a4', 'potrait');
	  
				  
			return $pdf->stream('Rekap Data Laporan.pdf');
		}
		public function getRekapRank(){
			$data['cms_users'] = DB::table('cms_users')
						->where('cms_users.id_cms_privileges', 2)
					  	->get();
			$data['tb_disposisi'] = DB::table('tb_disposisi')
						->get();
			$pdf = PDF::loadView('ranking',$data)
				  ->setPaper('a4', 'potrait');
	  
				  
			return $pdf->stream('Rekap Data Laporan.pdf');
		}


	    //By the way, you can still create your own method in here... :) 


	}