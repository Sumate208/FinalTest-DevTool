<template>
  <div class="container">
    <div>
      <p class="header text-white text-bold">ระบบรับสมัครนักศึกญาระดับปริญญาโท</p>
      <span class="header text-orage bg-light text-bold">สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง</span>
    </div>

    <div class="field" style="padding:15px;">
      <div class="text-center" style="padding:10px;">
        <p class="text-white text-bold">ค้นหาหลักสูตรที่เปิด</p>
      </div>
      <div class="form">
        <div class="row">
          <div class="columns">
            <div class="column">
              <div class="control">
                <label for="">ค้นหา'คณะ'</label>
                <div class="dropdown fullWidth" :class="{ 'is-active' : dropKana}">
                  <div class="dropdown-trigger fullWidth">
                    <button class="button fullWidth" @click="dropKana = !dropKana" aria-haspopup="true" aria-expanded="false" aria-controls="dropdown-menu3">
                      <span class="icon is-small">
                        <i class="fas fa-angle-down" aria-hidden="true"></i>
                      </span>
                    </button>
                  </div>
                  <div class="dropdown-menu fullWidth" id="dropdown-menu3" role="menu">
                    <div class="dropdown-content">
                      <label class="checkbox dropdown-item" v-for="kana in kanas" :key="kana.name">
                        <input type="checkbox" v-model="kana.value">
                        {{kana.name}}
                      </label>
                    </div>
                  </div>
                </div>

              </div>
            </div>
            <div class="column">
              <div class="control">
                <label for="">ค้นหา'รอบรับสมัคร'</label>
                <div class="dropdown fullWidth" :class="{ 'is-active' : dropRob}">
                  <div class="dropdown-trigger fullWidth">
                    <button class="button fullWidth" @click="dropRob = !dropRob" aria-haspopup="true" aria-expanded="false" aria-controls="dropdown-menu3">
                      <span class="icon is-small">
                        <i class="fas fa-angle-down" aria-hidden="true"></i>
                      </span>
                    </button>
                  </div>
                  <div class="dropdown-menu fullWidth" id="dropdown-menu3" role="menu">
                    <div class="dropdown-content">
                      <label class="checkbox dropdown-item" v-for="rob in robs" :key="rob.name">
                        <input type="checkbox" v-model="rob.value">
                        {{rob.name}}
                      </label>
                    </div>
                  </div>
                </div>
                
              </div>
            </div>
            <div class="column">
              <div class="control">
                <label for="">ค้นหา'โครงการ'</label>
                <div class="dropdown fullWidth" :class="{ 'is-active' : dropKrong}">
                  <div class="dropdown-trigger fullWidth">
                    <button class="button fullWidth" @click="dropKrong = !dropKrong" aria-haspopup="true" aria-expanded="false" aria-controls="dropdown-menu3">
                      <span class="icon is-small">
                        <i class="fas fa-angle-down" aria-hidden="true"></i>
                      </span>
                    </button>
                  </div>
                  <div class="dropdown-menu fullWidth" id="dropdown-menu3" role="menu">
                    <div class="dropdown-content">
                      <label class="checkbox dropdown-item" v-for="krong in krongs" :key="krong.name">
                        <input type="checkbox" v-model="krong.value">
                        {{krong.name}}
                      </label>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="columns">
            <div class="column">
              <div class="control">
                <label for="">ค้นหาหลักสูตร ไทย / นานาชาติ</label>
                <div class="dropdown fullWidth" :class="{ 'is-active' : dropSoot}">
                  <div class="dropdown-trigger fullWidth">
                    <button class="button fullWidth" @click="dropSoot = !dropSoot" aria-haspopup="true" aria-expanded="false" aria-controls="dropdown-menu3">
                      <span class="icon is-small">
                        <i class="fas fa-angle-down" aria-hidden="true"></i>
                      </span>
                    </button>
                  </div>
                  <div class="dropdown-menu fullWidth" id="dropdown-menu3" role="menu">
                    <div class="dropdown-content">
                      <label class="checkbox dropdown-item" v-for="soot in soots" :key="soot.name">
                        <input type="checkbox" v-model="soot.value">
                        {{soot.name}}
                      </label>
                    </div>
                  </div>
                </div>

              </div>
            </div>
            <div class="column"></div>
            <div class="column"></div>
          </div>
        </div>

        <div class="row">
          <div class="columns">
            <div class="column">
              <div class="control"> 
                <label for="">คำค้นหาเพิ่มเติม (Enter เพื่อแยกคำ) [ระบบจะค้นจากชื่อคณะ,หลักสูตร]</label>
                <input type="text" class="input" v-model="more">
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
    </div>

  </div>
</template>

<script>
import axios from "axios";
// @ is an alias to /src
export default {
  name: "Home",
  data() {
    return {
      user: null,
      dropKana: false,
      dropRob: false,
      dropKrong: false,
      dropSoot: false,
      kanas: [
        {name:'อุตสาหกรรมอาหาร',value:false},
        {name:'ครุศาสตร์อุตสาหกรรมและเทคโนโลยี',value:false},
        {name:'แพทยศาสตร์',value:false},
        {name:'สถาปัตยกรรม ศิลปะและการออกแบบ',value:false},
        {name:'เทคโนโลยีการเกษตร',value:false},
        {name:'วิทยาศาสตร์',value:false},
        {name:'เทคโนโลยีสารสนเทศ',value:false},
        {name:'เทคโนโลยีและนวัตกรรมวัสดุ',value:false},
        {name:'วิทยาเขตชุมพรเขตรอุดมศักดิ์',value:false},
        {name:'บริหารธุรกิจ',value:false},
        {name:'ศิลปศาสตร์',value:false},
        {name:'วิศวกรรมศาสตร์',value:false},
        {name:'นวัตกรรมการผลิตขั้นสูง',value:false},
        {name:'วิศวกรรมสังคีต',value:false},
      ],
      robs: [
        {name:' ( 1/2565 ) รอบ 1 - รับสมัครประจำภาคการศึกษา',value:false},
        {name:' ( 1/2565 ) รอบ 1 - รับสมัครแบบเลือกเข้าศึกษาในภาคการศึกษาที่ต้องการ',value:false},
        {name:' ( 2/2565 ) รอบ 1 - รับสมัครประจำภาคการศึกษา',value:false},
      ],
      krongs:[
        {name:'รับเข้า 1/2565 คณะอุตสาหกรรมอาหาร (โครงการแววนวัตกร)',value:false},
        {name:'รับเข้า 1/2565 คณะอุตสาหกรรมอาหาร ',value:false},
        {name:'รับเข้า 1/2565 คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี',value:false},
        {name:'รับเข้า 2/2565 คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี',value:false},
        {name:'รับเข้า 1/2565 คณะแพทยศาสตร์',value:false},
        {name:'รับเข้า 1/2565 คณะสถาปัตยกรรมศาสตร์',value:false},
        {name:'รับเข้า 1/2565 คณะเทคโนโลยีการเกษตร',value:false},
        {name:'รับเข้า 2/2565 คณะเทคโนโลยีการเกษตร',value:false},
        {name:'รับเข้าเทอม 1/2565 คณะเทคโนโลยีการเกษตร(โครงการแววนวัตกร)',value:false},
        {name:'รับเข้า 1/2565 คณะวิทยาศาสตร์',value:false},
        {name:'รับเข้า 2/2565 คณะวิทยาศาสตร์',value:false},
        {name:'รับเข้าเทอม 1/2565  คณะวิทยาศาสตร์ โครงการแววนวัตกร',value:false},
        {name:'รับเข้า 1/2565 คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี (โครงการแววนวัตกร)',value:false},
        {name:'Semester 1/2565 School of Industrial Education and Technology',value:false},
        {name:'Semester 2/2565 School of Industrial Education and Technology',value:false},
        {name:'รับเข้าเทอม 1/2565 คณะเทคโนโลยีสารสนเทศ โครงการแววนวัตกร',value:false},
        {name:'รับเข้าเทอม 1/2565 คณะเทคโนโลยีสารสนเทศ',value:false},
        {name:'รับเข้า 2/2565 (รอบที่ 1) คณะเทคโนโลยีสารสนเทศ',value:false},
        {name:'รับเข้า 2/2565 (รอบที่ 2) คณะเทคโนโลยีสารสนเทศ',value:false},
        {name:'รับเข้า 1/2565 วิทยาลัยเทคโนโลยีและนวัตกรรมวัสดุ',value:false},
        {name:'รับเข้า 2/2565 วิทยาลัยเทคโนโลยีและนวัตกรรมวัสดุ',value:false},
        {name:'รับเข้าเทอม 1/2565 วิทยาลัยเทคโนโลยีและนวัตกรรมวัสดุ โครงการแววนวัตกร',value:false},
        {name:'รับเข้า 1/2565 วิทยาเขตชุมพรเขตรอุดมศักดิ์',value:false},
        {name:'รับเข้า 1/2565 วิทยาเขตชุมพรเขตรอุดมศักดิ์ (โครงการแววนวัตกร)',value:false},
        {name:'รับเข้าเทอม 1/2565 คณะบริหารธุรกิจ',value:false},
        {name:'Semester 1/2565 Business School (Fully Online Course)',value:false},
        {name:'Semester 1/2565 Business School',value:false},
        {name:'รับเข้า 2/2565  คณะเทคโนโลยีสารสนเทศ (ปัญญาประดิษฐ์ฯ)',value:false},
        {name:'รับเข้า 1/2565 คณะศิลปศาสตร์ แบบที่ 1 (สอบข้อเขียนและสอบสัมภาษณ์)',value:false},
        {name:'รับเข้า 1/2565 คณะศิลปศาสตร์ แบบที่ 2 (สอบสัมภาษณ์อย่างเดียว)',value:false},
        {name:'รับเข้า1/2565 คณะศิลปศาสตร์ (โครงการแววนวัตกร)แบบที่ 1(สอบข้อเขียนและสอบสัมภาษณ์)',value:false},
        {name:'รับเข้า1/2565 คณะศิลปศาสตร์ (โครงการแววนวัตกร)แบบที 2 (สอบสัมภาษณ์อย่างเดีย)',value:false},
        {name:'รับเข้า 1/2565 คณะวิทยาศาสตร์ (โครงการนักวิเคราะห์ข้อมูลฯ)',value:false},
        {name:'รับเข้า 1/2565 รอบที่ 4 (มิ.ย.) คณะวิศวกรรมศาสตร์',value:false},
        {name:'รับเข้า 1/2565 รอบที่ 5 (ก.ค.) คณะวิศวกรรมศาสตร์',value:false},
        {name:'รับเข้า 1/2565 รอบที่ 4  (มิ.ย.) คณะวิศวกรรมศาสตร์ (โครงการแววนวัตกร)',value:false},
        {name:'รับเข้า 1/2565  คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมยานยนต์และระบบขนส่งขั้นสูง',value:false},
        {name:'Semester 1/2565 College of Advanced Manufacturing Innovation (Domestic Applicant)',value:false},
        {name:'Semester 1/2565 College of Advanced Manufacturing Innovation (Foreign Applicant)',value:false},
        {name:'Semester 2/2565 College of Advanced Manufacturing Innovation (Domestic Applicant)',value:false},
        {name:'Semester 2/2565 College of Advanced Manufacturing Innovation (Foreign Applicant)',value:false},
        {name:'รับเข้า 1/2565 คณะสถาปัตยกรรม ศิลปะและการออกแบบ โครงการแววนวัตกร',value:false},
        {name:'รับเข้า 2/2565 คณะสถาปัตยกรรมศาสตร์',value:false},
        {name:'รับเข้า 2/2565 คณะวิทยาศาสตร์ (โครงการนักวิเคราะห์ข้อมูลฯ)',value:false},
        {name:'Semester 1/2565 Institute of Music Science and Engineering',value:false},
      ],
      soots: [
        {name:'หลักสูตรนานาชาติ',value:false},
        {name:'หลักสูตรไทย',value:false},
      ],
      more:null,
      course:[]
    };
  },
  mounted() {
    this.getProduct();
  },
  methods: {
    getProduct(){
      axios.get('http://localhost:3000/getcourse').then(res => {
        this.course = res.data
      })
    },
  },
};
</script>
<style>
  .container{
    padding-top: 30px;
    padding-bottom: 30px;
  }
  .header{
    font-size: 1.5vw;
  }
  .text-white{
    color: white;
  }
  .text-orage{
    color: orangered;
  }
  .text-bold{
    font-weight: bold;
  }
  .bg-light{
    background: #b4e6e0;
    padding: 10px;
  }
  .text-center{
    text-align: center;
  }
  .field{
    background: #2a5a54;
    margin-top: 30px;
  }
  .form{
    background: white;
    padding: 20px 10px 20px 10px;
  }
  .fullWidth{
    width: 100%;
  }
  .dropdown-item :hover{
    background: #aaaaaa;
  }
  .dropdown-content{
    overflow-y: scroll; 
    max-height: 200px;
  }
</style>